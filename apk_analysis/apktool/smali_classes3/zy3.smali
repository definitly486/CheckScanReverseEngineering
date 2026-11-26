.class public final Lzy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzy3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc5<",
        "Lcr3;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lqz5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqz5<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Llc5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llc5<",
            "Lcr3;",
            "Lcr3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v0, v1}, Lqz5;->a(Ljava/lang/Object;Ljava/lang/String;)Lqz5;

    move-result-object v0

    sput-object v0, Lzy3;->b:Lqz5;

    return-void
.end method

.method public constructor <init>(Llc5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llc5<",
            "Lcr3;",
            "Lcr3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzy3;->a:Llc5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Lnc5$a;
    .locals 1

    check-cast p1, Lcr3;

    iget-object p0, p0, Lzy3;->a:Llc5;

    iget-object p0, p0, Llc5;->a:Lkc5;

    invoke-static {p1}, Llc5$a;->a(Ljava/lang/Object;)Llc5$a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lgy4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Llc5$a;->b:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p3, Lcr3;

    if-nez p3, :cond_0

    invoke-static {p1}, Llc5$a;->a(Ljava/lang/Object;)Llc5$a;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lgy4;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    sget-object p0, Lzy3;->b:Lqz5;

    invoke-virtual {p4, p0}, Lxz5;->c(Lqz5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance p2, Lnc5$a;

    new-instance p3, Lgz3;

    invoke-direct {p3, p1, p0}, Lgz3;-><init>(Lcr3;I)V

    invoke-direct {p2, p1, p3}, Lnc5$a;-><init>(Lkf4;Ls82;)V

    return-object p2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcr3;

    const/4 p0, 0x1

    return p0
.end method
