.class public Landroidx/webkit/internal/WebSettingsAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    return-void
.end method


# virtual methods
.method public getAttributionRegistrationBehavior()I
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getAttributionBehavior()I

    move-result p0

    return p0
.end method

.method public getBackForwardCacheEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getBackForwardCacheEnabled()Z

    move-result p0

    return p0
.end method

.method public getBackForwardCacheKeepForwardEntries()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getBackForwardCacheSettingsKeepForwardEntries()Z

    move-result p0

    return p0
.end method

.method public getBackForwardCacheMaxPagesInCache()I
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getBackForwardCacheSettingsMaxPagesInCache()I

    move-result p0

    return p0
.end method

.method public getBackForwardCacheTimeoutSeconds()J
    .locals 2

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getBackForwardCacheSettingsTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCookieAccessForShouldInterceptRequestEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getIncludeCookiesOnIntercept()Z

    move-result p0

    return p0
.end method

.method public getDisabledActionModeMenuItems()I
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getDisabledActionModeMenuItems()I

    move-result p0

    return p0
.end method

.method public getEnterpriseAuthenticationAppLinkPolicyEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getEnterpriseAuthenticationAppLinkPolicyEnabled()Z

    move-result p0

    return p0
.end method

.method public getForceDark()I
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getForceDark()I

    move-result p0

    return p0
.end method

.method public getForceDarkStrategy()I
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getForceDarkBehavior()I

    move-result p0

    return p0
.end method

.method public getHasEnrolledInstrumentEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getHasEnrolledInstrumentEnabled()Z

    move-result p0

    return p0
.end method

.method public getOffscreenPreRaster()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getOffscreenPreRaster()Z

    move-result p0

    return p0
.end method

.method public getPaymentRequestEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getPaymentRequestEnabled()Z

    move-result p0

    return p0
.end method

.method public getSafeBrowsingEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getSafeBrowsingEnabled()Z

    move-result p0

    return p0
.end method

.method public getSpeculativeLoadingStatus()I
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getSpeculativeLoadingStatus()I

    move-result p0

    return p0
.end method

.method public getUserAgentMetadata()Landroidx/webkit/UserAgentMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getUserAgentMetadataMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Landroidx/webkit/internal/UserAgentMetadataInternal;->getUserAgentMetadataFromMap(Ljava/util/Map;)Landroidx/webkit/UserAgentMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getWebAuthenticationSupport()I
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getWebauthnSupport()I

    move-result p0

    return p0
.end method

.method public getWebViewMediaIntegrityApiStatus()Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig;
    .locals 2

    new-instance v0, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;

    iget-object v1, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getWebViewMediaIntegrityApiDefaultStatus()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;-><init>(I)V

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->getWebViewMediaIntegrityApiOverrideRules()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;->setOverrideRules(Ljava/util/Map;)Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig$Builder;->build()Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig;

    move-result-object p0

    return-object p0
.end method

.method public isAlgorithmicDarkeningAllowed()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->isAlgorithmicDarkeningAllowed()Z

    move-result p0

    return p0
.end method

.method public setAlgorithmicDarkeningAllowed(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setAlgorithmicDarkeningAllowed(Z)V

    return-void
.end method

.method public setAttributionRegistrationBehavior(I)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setAttributionBehavior(I)V

    return-void
.end method

.method public setBackForwardCacheEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setBackForwardCacheEnabled(Z)V

    return-void
.end method

.method public setBackForwardCacheKeepForwardEntries(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setBackForwardCacheSettingsKeepForwardEntries(Z)V

    return-void
.end method

.method public setBackForwardCacheMaxPagesInCache(I)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setBackForwardCacheSettingsMaxPagesInCache(I)V

    return-void
.end method

.method public setBackForwardCacheTimeoutSeconds(J)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1, p2}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setBackForwardCacheSettingsTimeout(J)V

    return-void
.end method

.method public setCookieAccessForShouldInterceptRequestEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setIncludeCookiesOnIntercept(Z)V

    return-void
.end method

.method public setDisabledActionModeMenuItems(I)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setDisabledActionModeMenuItems(I)V

    return-void
.end method

.method public setEnterpriseAuthenticationAppLinkPolicyEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setEnterpriseAuthenticationAppLinkPolicyEnabled(Z)V

    return-void
.end method

.method public setForceDark(I)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setForceDark(I)V

    return-void
.end method

.method public setForceDarkStrategy(I)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setForceDarkBehavior(I)V

    return-void
.end method

.method public setHasEnrolledInstrumentEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setHasEnrolledInstrumentEnabled(Z)V

    return-void
.end method

.method public setHyperlinkContextMenuItems(I)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setHyperlinkContextMenuItems(I)V

    return-void
.end method

.method public setOffscreenPreRaster(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setOffscreenPreRaster(Z)V

    return-void
.end method

.method public setPaymentRequestEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setPaymentRequestEnabled(Z)V

    return-void
.end method

.method public setSafeBrowsingEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setSafeBrowsingEnabled(Z)V

    return-void
.end method

.method public setSpeculativeLoadingStatus(I)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setSpeculativeLoadingStatus(I)V

    return-void
.end method

.method public setUserAgentMetadata(Landroidx/webkit/UserAgentMetadata;)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-static {p1}, Landroidx/webkit/internal/UserAgentMetadataInternal;->convertUserAgentMetadataToMap(Landroidx/webkit/UserAgentMetadata;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setUserAgentMetadataFromMap(Ljava/util/Map;)V

    return-void
.end method

.method public setWebAuthenticationSupport(I)V
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setWebauthnSupport(I)V

    return-void
.end method

.method public setWebViewMediaIntegrityApiStatus(Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig;)V
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/WebSettingsAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;

    invoke-virtual {p1}, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig;->getDefaultStatus()I

    move-result v0

    invoke-virtual {p1}, Landroidx/webkit/WebViewMediaIntegrityApiStatusConfig;->getOverrideRules()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/chromium/support_lib_boundary/WebSettingsBoundaryInterface;->setWebViewMediaIntegrityApiStatus(ILjava/util/Map;)V

    return-void
.end method
