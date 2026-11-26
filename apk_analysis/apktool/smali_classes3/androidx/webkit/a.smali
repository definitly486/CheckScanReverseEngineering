.class public final synthetic Landroidx/webkit/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/webkit/RestrictionAllowlist$ConfigTask;


# instance fields
.field public final synthetic a:Landroidx/webkit/RestrictionAllowlist$Builder;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/RestrictionAllowlist$Builder;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/a;->a:Landroidx/webkit/RestrictionAllowlist$Builder;

    iput-object p2, p0, Landroidx/webkit/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/webkit/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V
    .locals 2

    iget-object v0, p0, Landroidx/webkit/a;->b:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/webkit/a;->c:Ljava/lang/String;

    iget-object p0, p0, Landroidx/webkit/a;->a:Landroidx/webkit/RestrictionAllowlist$Builder;

    invoke-static {p0, v0, v1, p1}, Landroidx/webkit/RestrictionAllowlist$Builder;->a(Landroidx/webkit/RestrictionAllowlist$Builder;Ljava/lang/Object;Ljava/lang/String;Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V

    return-void
.end method
