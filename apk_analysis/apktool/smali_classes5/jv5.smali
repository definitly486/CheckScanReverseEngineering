.class public final Ljv5;
.super Lio/grpc/ManagedChannelProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/ManagedChannelProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lhv5;
    .locals 0

    new-instance p0, Lhv5;

    invoke-direct {p0, p1}, Lhv5;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b()I
    .locals 2

    const-class p0, Ljv5;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :try_start_0
    const-string v0, "android.app.Application"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x8

    return p0

    :catch_0
    const/4 p0, 0x3

    return p0
.end method
