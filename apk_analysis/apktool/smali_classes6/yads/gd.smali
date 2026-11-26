.class public final Lyads/gd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;


# instance fields
.field public final a:Lyads/zu3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/gd;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyads/zu3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gd;->a:Lyads/zu3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/id;Lyads/id;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lyads/gd;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "google_advertising_id_key"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-boolean v4, p1, Lyads/id;->b:Z

    if-ne v4, v2, :cond_0

    iget-object p1, p0, Lyads/gd;->a:Lyads/zu3;

    check-cast p1, Lyads/av3;

    invoke-virtual {p1, v1, v3}, Lyads/av3;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lyads/id;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_2

    iget-object v4, p0, Lyads/gd;->a:Lyads/zu3;

    check-cast v4, Lyads/av3;

    invoke-virtual {v4, v1, p1}, Lyads/av3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string p1, "huawei_advertising_id_key"

    if-eqz p2, :cond_3

    iget-boolean v1, p2, Lyads/id;->b:Z

    if-ne v1, v2, :cond_3

    iget-object p2, p0, Lyads/gd;->a:Lyads/zu3;

    check-cast p2, Lyads/av3;

    invoke-virtual {p2, p1, v3}, Lyads/av3;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    iget-object v3, p2, Lyads/id;->a:Ljava/lang/String;

    :cond_4
    if-eqz v3, :cond_5

    iget-object p2, p0, Lyads/gd;->a:Lyads/zu3;

    check-cast p2, Lyads/av3;

    invoke-virtual {p2, p1, v3}, Lyads/av3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    if-eqz p3, :cond_6

    iget-object p0, p0, Lyads/gd;->a:Lyads/zu3;

    const-string p1, "app_set_advertising_id_key"

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, p1, p3}, Lyads/av3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p0
.end method
