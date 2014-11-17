use Software::License;
use System::Passwd;

module Module::Starter
{
    our sub make_dir_tree (Str:D $module_name)
    {
        # check module name is ok
        die 'illegal name' unless $module_name ~~ /^(<[A..Za..z0..9\-]>|\:\:)+$/;

        my @module_parts = $module_name.split(/(\:\:|\-)/);

        # check dir doesn't exist
        die "Cannot continue: '@module_parts[0]' already exists"
            if @module_parts[0].IO ~~ :e;

        my $root_dir = @module_parts.join('-');
        $root_dir.IO.mkdir;

        # create t, lib etc
    }

    # make META

    # LICENSE

    # basic test file
}
