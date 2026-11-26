.class public final Lyads/sk0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/sk0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lyads/p04;)Lyads/xl2;
    .locals 0

    iget-object p0, p1, Lyads/p04;->c:Lyads/k04;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lyads/p04;->c:Lyads/k04;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lyads/xl2;->a:Lyads/vl2;

    return-object p0
.end method
