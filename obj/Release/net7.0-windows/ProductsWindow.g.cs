﻿#pragma checksum "..\..\..\ProductsWindow.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "E37EDC8ECAFE053BD80E22A10E67E98424E7CCAF"
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
    /// ProductsWindow
    /// </summary>
    public partial class ProductsWindow : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 80 "..\..\..\ProductsWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox ProductIdTB;
        
        #line default
        #line hidden
        
        
        #line 84 "..\..\..\ProductsWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox ProductNameTB;
        
        #line default
        #line hidden
        
        
        #line 88 "..\..\..\ProductsWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox ProductQuntityTB;
        
        #line default
        #line hidden
        
        
        #line 92 "..\..\..\ProductsWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox ProductDescriptionTB;
        
        #line default
        #line hidden
        
        
        #line 96 "..\..\..\ProductsWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ProductCatgoryCB;
        
        #line default
        #line hidden
        
        
        #line 101 "..\..\..\ProductsWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AddProductBtn;
        
        #line default
        #line hidden
        
        
        #line 102 "..\..\..\ProductsWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button EditProductBtn;
        
        #line default
        #line hidden
        
        
        #line 103 "..\..\..\ProductsWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button DeleteProductBtn;
        
        #line default
        #line hidden
        
        
        #line 115 "..\..\..\ProductsWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid ProductDataGrid;
        
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
            System.Uri resourceLocater = new System.Uri("/inventroy system;component/productswindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\ProductsWindow.xaml"
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
            this.ProductIdTB = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.ProductNameTB = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.ProductQuntityTB = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.ProductDescriptionTB = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.ProductCatgoryCB = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 6:
            this.AddProductBtn = ((System.Windows.Controls.Button)(target));
            return;
            case 7:
            this.EditProductBtn = ((System.Windows.Controls.Button)(target));
            return;
            case 8:
            this.DeleteProductBtn = ((System.Windows.Controls.Button)(target));
            return;
            case 9:
            this.ProductDataGrid = ((System.Windows.Controls.DataGrid)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

