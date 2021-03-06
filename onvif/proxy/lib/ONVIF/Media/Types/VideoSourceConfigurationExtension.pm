package ONVIF::Media::Types::VideoSourceConfigurationExtension;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Rotate_of :ATTR(:get<Rotate>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        Rotate
        Extension

    ) ],
    {
        'Rotate' => \%Rotate_of,
        'Extension' => \%Extension_of,
    },
    {
        'Rotate' => 'ONVIF::Media::Types::Rotate',
        'Extension' => 'ONVIF::Media::Types::VideoSourceConfigurationExtension2',
    },
    {

        'Rotate' => 'Rotate',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::VideoSourceConfigurationExtension

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
VideoSourceConfigurationExtension from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Rotate


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::VideoSourceConfigurationExtension
   Rotate =>  { # ONVIF::Media::Types::Rotate
     Mode => $some_value, # RotateMode
     Degree =>  $some_value, # int
     Extension =>  { # ONVIF::Media::Types::RotateExtension
     },
   },
   Extension =>  { # ONVIF::Media::Types::VideoSourceConfigurationExtension2
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

