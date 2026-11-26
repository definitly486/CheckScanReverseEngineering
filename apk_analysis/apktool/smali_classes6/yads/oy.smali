.class public final Lyads/oy;
.super Lyads/rt5;
.source "SourceFile"


# instance fields
.field public final f:Lyads/ni0;


# direct methods
.method public constructor <init>(Lyads/ni0;)V
    .locals 0

    invoke-direct {p0}, Lyads/rt5;-><init>()V

    iput-object p1, p0, Lyads/oy;->f:Lyads/ni0;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lyads/oy;->f:Lyads/ni0;

    check-cast v0, Lea;

    iget-object v0, v0, Lea;->b:Ljava/lang/Object;

    check-cast v0, Lyads/py;

    invoke-virtual {v0, p0}, Lyads/py;->a(Lyads/rt5;)V

    return-void
.end method
