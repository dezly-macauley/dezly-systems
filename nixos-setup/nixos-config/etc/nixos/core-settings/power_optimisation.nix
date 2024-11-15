{ pkgs, ... }:

{

    # ABOUT: Power Optimisation

    environment.systemPackages = with pkgs; [
            
        acpi
        brightnessctl
        auto-cpufreq

    ];

    # NOTE: This will activate auto-cpufreq
    services.auto-cpufreq.enable = true;

}
