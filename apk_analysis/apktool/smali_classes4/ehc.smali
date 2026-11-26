.class public final Lehc;
.super Lcom/google/android/gms/common/zzy;
.source "SourceFile"


# instance fields
.field public final f:Lg1c;


# direct methods
.method public synthetic constructor <init>(Lg1c;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v1, v2, v0}, Lcom/google/android/gms/common/zzy;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    iput-object p1, p0, Lehc;->f:Lg1c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lehc;->f:Lg1c;

    invoke-virtual {p0}, Lg1c;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
