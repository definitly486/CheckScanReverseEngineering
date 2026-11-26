.class public final synthetic Landroidx/camera/extensions/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/extensions/VendorExtenderFactory;


# instance fields
.field public final synthetic a:Landroidx/camera/extensions/ExtensionsInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/extensions/ExtensionsInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/a;->a:Landroidx/camera/extensions/ExtensionsInfo;

    return-void
.end method


# virtual methods
.method public final createVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/a;->a:Landroidx/camera/extensions/ExtensionsInfo;

    invoke-virtual {p0, p1}, Landroidx/camera/extensions/ExtensionsInfo;->getVendorExtender(I)Landroidx/camera/extensions/internal/VendorExtender;

    move-result-object p0

    return-object p0
.end method
