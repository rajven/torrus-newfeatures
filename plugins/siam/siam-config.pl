# DO NOT EDIT THIS FILE!

# Torrus SIAM plugin default configuration
# Put all your local settings into siam-siteconfig.pl

use lib(@perllibdirs@);

$Torrus::SIAM::version        = '@VERSION@';


# Default location for DDX files
$Torrus::SIAM::ddx_path = '@sitedir@/discovery/';

# Default location for DevDiscover bundle XML files
$Torrus::SIAM::bundles_path = '@sitexmldir@/bundles';

# Default location for DevDiscover per-node XML files
$Torrus::SIAM::nodes_path = '@sitexmldir@/nodes';

# Default location for RRD files
$Torrus::SIAM::rrd_path = '@defrrddir@';

# Default DDX parameters
$Torrus::SIAM::ddx_defaults = {
    'host-subtree'   => '/',
    'snmp-port'      => '161',
    'snmp-version'   => '2c',        
    'snmp-community' => 'public',
    'snmp-timeout'   => 3,
    'snmp-retries'   => 2,
    'CiscoIOS_cbQoS::classmaps-only' => 'yes',
    'RFC2863_IF_MIB::list-admindown-interfaces' => 'yes',
    'SIAM::exclude-unmatched-admindown-interfaces' => 'yes',
};


####   Traffic aggregation graphs

# Default location for aggregation XML files
$Torrus::SIAM::aggr_xml_path = '@sitexmldir@/bundles';

# Values of siam.svc.type attribute that build up the aggregates
@Torrus::SIAM::aggr_svc_types = ('TrafficAggregate');

# Attribute that defines the Torrus subtree name for the aggregate
$Torrus::SIAM::aggr_subtree_name_attr = 'torrus.aggregate.name';

# Attribute that defines the description for the aggregate
$Torrus::SIAM::aggr_descr_attr = 'torrus.aggregate.description';

# Subtree path where the aggregates are placed
$Torrus::SIAM::aggr_tree_location = '/Aggregates';


####  SNMP discovery matching

@Torrus::SIAMDD::match_port_name_attributes =
    ('torrus.port.name',
     'torrus.port.shortname');

@Torrus::SIAMDD::match_port_properties =
    ('ifName',
     'ifDescr',
     'ifAlias');


require '@siam_siteconfig_pl@';

1;
