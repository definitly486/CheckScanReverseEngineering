.class public final Lyads/ec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:J


# instance fields
.field public final a:Lyads/qc;

.field public final b:Lyads/uc;

.field public final c:Lyads/cp2;

.field public final d:Lyads/tq4;

.field public final e:Ly22;

.field public f:Lmb4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1388

    sput-wide v0, Lyads/ec;->g:J

    return-void
.end method

.method public constructor <init>(Lyads/qc;Lyads/uc;Lyads/cp2;Lyads/tq4;)V
    .locals 2

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    invoke-static {v1, v0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ec;->a:Lyads/qc;

    iput-object p2, p0, Lyads/ec;->b:Lyads/uc;

    iput-object p3, p0, Lyads/ec;->c:Lyads/cp2;

    iput-object p4, p0, Lyads/ec;->d:Lyads/tq4;

    iput-object v0, p0, Lyads/ec;->e:Ly22;

    return-void
.end method
