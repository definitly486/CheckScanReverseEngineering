.class public final Landroidx/webkit/WebViewBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebViewBuilder$Preset;,
        Landroidx/webkit/WebViewBuilder$Experimental;
    }
.end annotation


# static fields
.field public static final PRESET_LEGACY:I


# instance fields
.field private final mAllowLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/RestrictionAllowlist;",
            ">;"
        }
    .end annotation
.end field

.field mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

.field private mProfileName:Ljava/lang/String;

.field private mRestrictJavascriptInterface:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/WebViewBuilder;->mAllowLists:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p0, "Invalid preset: "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private getBuilderStateBoundary()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;
    .locals 1

    iget-object v0, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    invoke-interface {v0}, Landroidx/webkit/internal/WebViewProviderFactory;->getWebViewBuilder()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    :cond_0
    return-object v0
.end method

.method private makeConfig()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;
    .locals 2

    new-instance v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;

    invoke-direct {v0}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;-><init>()V

    iget-boolean v1, p0, Landroidx/webkit/WebViewBuilder;->mRestrictJavascriptInterface:Z

    iput-boolean v1, v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->restrictJavascriptInterface:Z

    iget-object v1, p0, Landroidx/webkit/WebViewBuilder;->mProfileName:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->profileName:Ljava/lang/String;

    :try_start_0
    iget-object p0, p0, Landroidx/webkit/WebViewBuilder;->mAllowLists:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/RestrictionAllowlist;

    invoke-virtual {v1, v0}, Landroidx/webkit/RestrictionAllowlist;->configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/webkit/WebViewBuilderException;

    invoke-direct {v0, p0}, Landroidx/webkit/WebViewBuilderException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addAllowlist(Landroidx/webkit/RestrictionAllowlist;)Landroidx/webkit/WebViewBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/webkit/WebViewBuilder;->mAllowLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public applyTo(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/webkit/WebView;",
            ">(TT;)TT;"
        }
    .end annotation

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEBVIEW_BUILDER_V2:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/webkit/WebViewBuilder;->getBuilderStateBoundary()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    move-result-object v0

    invoke-direct {p0}, Landroidx/webkit/WebViewBuilder;->makeConfig()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;

    move-result-object p0

    :try_start_0
    invoke-interface {v0, p1, p0}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;->applyTo(Landroid/webkit/WebView;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/webkit/WebViewBuilderException;

    invoke-direct {p1, p0}, Landroidx/webkit/WebViewBuilderException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public build(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 1

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEBVIEW_BUILDER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/webkit/WebViewBuilder;->getBuilderStateBoundary()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    move-result-object v0

    invoke-direct {p0}, Landroidx/webkit/WebViewBuilder;->makeConfig()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;

    move-result-object p0

    :try_start_0
    invoke-interface {v0, p1, p0}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;->build(Landroid/content/Context;Ljava/util/function/Consumer;)Landroid/webkit/WebView;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/webkit/WebViewBuilderException;

    invoke-direct {p1, p0}, Landroidx/webkit/WebViewBuilderException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public restrictJavaScriptInterfaces()Landroidx/webkit/WebViewBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/webkit/WebViewBuilder;->mRestrictJavascriptInterface:Z

    return-object p0
.end method

.method public setProfile(Ljava/lang/String;)Landroidx/webkit/WebViewBuilder;
    .locals 0

    iput-object p1, p0, Landroidx/webkit/WebViewBuilder;->mProfileName:Ljava/lang/String;

    return-object p0
.end method
