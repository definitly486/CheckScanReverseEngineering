.class public final Lzy0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzy0;->onResponse(Lokhttp3/a;Lz47;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldm3<",
        "Ljava/lang/Throwable;",
        "Lz47;",
        "Lo22;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lzy0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzy0$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzy0$a;->b:Lzy0$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Lz47;

    check-cast p3, Lo22;

    :try_start_0
    invoke-static {p2}, Leg;->c(Lz47;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catch_1
    move-exception p0

    throw p0
.end method
