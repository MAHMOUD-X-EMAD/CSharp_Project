﻿#pragma checksum "..\..\..\..\Invoice.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "6DD9B7CFC55162895A812820588AEE44FE856129"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using inventroy_system;


namespace inventroy_system {
    
    
    /// <summary>
    /// Invoice
    /// </summary>
    public partial class Invoice : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 44 "..\..\..\..\Invoice.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label InvoiceNumLablel;
        
        #line default
        #line hidden
        
        
        #line 45 "..\..\..\..\Invoice.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label InvoicDateLabel;
        
        #line default
        #line hidden
        
        
        #line 68 "..\..\..\..\Invoice.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label CustomerNameLabel;
        
        #line default
        #line hidden
        
        
        #line 75 "..\..\..\..\Invoice.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label CustomerPhoneLablel;
        
        #line default
        #line hidden
        
        
        #line 76 "..\..\..\..\Invoice.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label CustomerAddressLabel;
        
        #line default
        #line hidden
        
        
        #line 84 "..\..\..\..\Invoice.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid ordersdetailDataGrid;
        
        #line default
        #line hidden
        
        
        #line 128 "..\..\..\..\Invoice.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label SubTotalLabel;
        
        #line default
        #line hidden
        
        
        #line 129 "..\..\..\..\Invoice.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label taxLabel;
        
        #line default
        #line hidden
        
        
        #line 132 "..\..\..\..\Invoice.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label totalLabel;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.1.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Inventory_System;component/invoice.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Invoice.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.1.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 8 "..\..\..\..\Invoice.xaml"
            ((inventroy_system.Invoice)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Window_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.InvoiceNumLablel = ((System.Windows.Controls.Label)(target));
            return;
            case 3:
            this.InvoicDateLabel = ((System.Windows.Controls.Label)(target));
            return;
            case 4:
            this.CustomerNameLabel = ((System.Windows.Controls.Label)(target));
            return;
            case 5:
            this.CustomerPhoneLablel = ((System.Windows.Controls.Label)(target));
            return;
            case 6:
            this.CustomerAddressLabel = ((System.Windows.Controls.Label)(target));
            return;
            case 7:
            this.ordersdetailDataGrid = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 8:
            this.SubTotalLabel = ((System.Windows.Controls.Label)(target));
            return;
            case 9:
            this.taxLabel = ((System.Windows.Controls.Label)(target));
            return;
            case 10:
            this.totalLabel = ((System.Windows.Controls.Label)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

