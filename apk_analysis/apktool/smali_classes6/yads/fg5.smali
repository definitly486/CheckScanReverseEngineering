.class public final Lyads/fg5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bf5;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/fg5;->a:Lyads/bf5;

    return-void
.end method


# virtual methods
.method public final a(Lyads/d9;)Lyads/of4;
    .locals 6

    new-instance v3, Lyads/kh5;

    invoke-direct {v3}, Lyads/kh5;-><init>()V

    new-instance v2, Lyads/md5;

    iget-object p0, p0, Lyads/fg5;->a:Lyads/bf5;

    invoke-direct {v2, p0}, Lyads/md5;-><init>(Lyads/bf5;)V

    new-instance v4, Lyads/vf5;

    invoke-direct {v4, p0, p1}, Lyads/vf5;-><init>(Lyads/bf5;Lyads/d9;)V

    new-instance v5, Lyads/ch5;

    invoke-direct {v5}, Lyads/ch5;-><init>()V

    new-instance v1, Lyads/nd5;

    invoke-direct {v1, p1}, Lyads/nd5;-><init>(Lyads/d9;)V

    new-instance v0, Lyads/of4;

    invoke-direct/range {v0 .. v5}, Lyads/of4;-><init>(Lyads/n5;Lyads/mf4;Lyads/gm4;Lyads/b24;Lyads/z06;)V

    return-object v0
.end method
