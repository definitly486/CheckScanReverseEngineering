.class final Lcom/google/firebase/sessions/settings/RemoteSettings$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/settings/RemoteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/RemoteSettings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultCacheDuration()I
    .locals 0

    invoke-static {}, Lcom/google/firebase/sessions/settings/RemoteSettings;->access$getDefaultCacheDuration$cp()I

    move-result p0

    return p0
.end method

.method public final getSanitizeRegex()Lg17;
    .locals 0

    invoke-static {}, Lcom/google/firebase/sessions/settings/RemoteSettings;->access$getSanitizeRegex$cp()Lg17;

    move-result-object p0

    return-object p0
.end method
