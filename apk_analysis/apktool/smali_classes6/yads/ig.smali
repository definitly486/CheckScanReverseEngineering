.class public final Lyads/ig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:J


# instance fields
.field public final a:Lyads/kg;

.field public final b:Lyads/vg;

.field public final c:Ly22;

.field public volatile d:Lyads/fg;

.field public final e:Lyg5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x7530

    sput-wide v0, Lyads/ig;->f:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lyads/kg;

    invoke-direct {v0}, Lyads/kg;-><init>()V

    invoke-static {p1}, Lyads/dg;->a(Landroid/content/Context;)Lyads/vg;

    move-result-object p1

    new-instance v1, Lyads/i90;

    invoke-direct {v1}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v2

    sget-object v3, Lqo2;->a:Loi2;

    sget-object v3, Lsh2;->c:Lsh2;

    invoke-static {v2, v3}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v2

    invoke-interface {v2, v1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v1

    invoke-static {v1}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ig;->a:Lyads/kg;

    iput-object p1, p0, Lyads/ig;->b:Lyads/vg;

    iput-object v1, p0, Lyads/ig;->c:Ly22;

    new-instance p1, Lch5;

    invoke-direct {p1}, Lch5;-><init>()V

    iput-object p1, p0, Lyads/ig;->e:Lyg5;

    return-void
.end method
