.class public final Lyads/ti1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/oi1;


# direct methods
.method public constructor <init>(Lyads/oi1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ti1;->a:Lyads/oi1;

    return-void
.end method


# virtual methods
.method public final a(Lyads/br0;Lyads/fs2;Lyads/xv1;)Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Lyads/si1;

    invoke-direct {v0, p0, p3, p2}, Lyads/si1;-><init>(Lyads/ti1;Lyads/xv1;Lyads/fs2;)V

    invoke-virtual {v0, p1, p2}, Lyads/dj2;->b(Lyads/br0;Lyads/fs2;)Ljava/lang/Object;

    iget-object p0, v0, Lyads/si1;->b:Ljava/util/ArrayList;

    return-object p0
.end method
