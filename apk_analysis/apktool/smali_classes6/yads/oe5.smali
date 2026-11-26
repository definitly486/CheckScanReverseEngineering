.class public final Lyads/oe5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lyg5;


# instance fields
.field public final a:Lyads/t5;

.field public final b:Lyads/qi5;

.field public final c:Lyads/ke5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lch5;

    invoke-direct {v0}, Lch5;-><init>()V

    sput-object v0, Lyads/oe5;->d:Lyg5;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/t5;Lyads/ed;Lyads/wn2;Lyads/q84;)V
    .locals 7

    new-instance v0, Lyads/qi5;

    invoke-direct {v0}, Lyads/qi5;-><init>()V

    new-instance v1, Lyads/ke5;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lyads/ke5;-><init>(Landroid/content/Context;Lyads/t5;Lyads/ed;Lyads/wn2;Lyads/q84;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lyads/oe5;->a:Lyads/t5;

    iput-object v0, p0, Lyads/oe5;->b:Lyads/qi5;

    iput-object v1, p0, Lyads/oe5;->c:Lyads/ke5;

    return-void
.end method
