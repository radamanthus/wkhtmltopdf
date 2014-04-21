if ['app_master', 'app', 'solo'].include?(node[:instance_role])
  ey_cloud_report "wkhtmltopdf" do
    message "Installing wkhtmltopdf"
  end

  enable_package "app-misc/wkhtmltopdf-bin" do
    version "0.10.0_beta5"
  end

  link "/usr/bin/wkhtmltopdf" do
    to "/usr/local/bin/wkhtmltopdf"
  end
end
