.class public final synthetic Lz42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lz42;->b:I

    iput-object p2, p0, Lz42;->c:Ljava/lang/Object;

    iput-object p3, p0, Lz42;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lz42;->b:I

    iget-object v1, p0, Lz42;->d:Ljava/lang/Object;

    iget-object p0, p0, Lz42;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/tapjoy/c0;

    check-cast v1, Lcom/tapjoy/TJError;

    invoke-virtual {p0, v1}, Lcom/tapjoy/c0;->a(Lcom/tapjoy/TJError;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;

    check-cast v1, Landroidx/media3/exoplayer/FormatHolder;

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;Landroidx/media3/exoplayer/FormatHolder;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v1}, Lcom/google/android/material/button/MaterialButton;->a(Lcom/google/android/material/button/MaterialButton;Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    check-cast v1, Lcom/google/firebase/crashlytics/internal/settings/SettingsProvider;

    invoke-static {p0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->j(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Lcom/google/firebase/crashlytics/internal/settings/SettingsProvider;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
