.class public final Lyads/ql6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/t5;

.field public final b:Lyads/ll6;

.field public final c:Ljava/util/ArrayList;

.field public d:Lyads/mc6;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;Lyads/j86;Lyads/ac6;)V
    .locals 6

    new-instance v0, Lyads/ll6;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lyads/ll6;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/j86;Lyads/ac6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/ql6;->a:Lyads/t5;

    iput-object v0, p0, Lyads/ql6;->b:Lyads/ll6;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/ql6;->c:Ljava/util/ArrayList;

    return-void
.end method
