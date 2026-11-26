.class public final synthetic Le52;
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

    iput p1, p0, Le52;->b:I

    iput-object p2, p0, Le52;->c:Ljava/lang/Object;

    iput-object p3, p0, Le52;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Le52;->b:I

    iget-object v1, p0, Le52;->d:Ljava/lang/Object;

    iget-object p0, p0, Le52;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/tracker/obfuscated/i0;

    check-cast v1, Ljava/util/List;

    invoke-static {p0, v1}, Lcom/my/tracker/obfuscated/i0;->C(Lcom/my/tracker/obfuscated/i0;Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {p0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->c(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
