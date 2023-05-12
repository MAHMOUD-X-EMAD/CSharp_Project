﻿#pragma checksum "..\..\..\OrdersWindow.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "7F4114028CFC9E74DA8DB654BB030029F124D0A4"
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
    /// OrdersWindow
    /// </summary>
    public partial class OrdersWindow : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 82 "..\..\..\OrdersWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid customerDataGrid;
        
        #line default
        #line hidden
        
        
        #line 88 "..\..\..\OrdersWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox chooseCategoryCB;
        
        #line default
        #line hidden
        
        
        #line 89 "..\..\..\OrdersWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid ProductDataGrid;
        
        #line default
        #line hidden
        
        
        #line 116 "..\..\..\OrdersWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox CustomerIdTB;
        
        #line default
        #line hidden
        
        
        #line 121 "..\..\..\OrdersWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox CustomerNameTB;
        
        #line default
        #line hidden
        
        
        #line 126 "..\..\..\OrdersWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Product_QuantityTB;
        
        #line default
        #line hidden
        
        
        #line 145 "..\..\..\OrdersWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox ProductQuantity;
        
        #line default
        #line hidden
        
        
        #line 148 "..\..\..\OrdersWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AddOrderBtn;
        
        #line default
        #line hidden
        
        
        #line 150 "..\..\..\OrdersWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid ordersDataGrid;
        
        #line default
        #line hidden
        
        
        #line 156 "..\..\..\OrdersWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label TotalPriceLabel;
        
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
            System.Uri resourceLocater = new System.Uri("/Inventory_System;component/orderswindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\OrdersWindow.xaml"
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
            this.customerDataGrid = ((System.Windows.Controls.DataGrid)(target));
            
            #line 82 "..\..\..\OrdersWindow.xaml"
            this.customerDataGrid.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.customerDataGrid_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.chooseCategoryCB = ((System.Windows.Controls.ComboBox)(target));
            
            #line 88 "..\..\..\OrdersWindow.xaml"
            this.chooseCategoryCB.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.chooseCategoryCB_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.ProductDataGrid = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 4:
            this.CustomerIdTB = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.CustomerNameTB = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.Product_QuantityTB = ((System.Windows.Controls.TextBox)(target));
            return;
            case 7:
            this.ProductQuantity = ((System.Windows.Controls.TextBox)(target));
            return;
            case 8:
            this.AddOrderBtn = ((System.Windows.Controls.Button)(target));
            
            #line 148 "..\..\..\OrdersWindow.xaml"
            this.AddOrderBtn.Click += new System.Windows.RoutedEventHandler(this.AddOrderBtn_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.ordersDataGrid = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 10:
            this.TotalPriceLabel = ((System.Windows.Controls.Label)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

