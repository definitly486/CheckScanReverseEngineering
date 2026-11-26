.class public final Lyads/rq2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:J


# instance fields
.field public final a:Lyads/fr2;

.field public final b:Lyads/tt4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    sput-wide v0, Lyads/rq2;->c:J

    return-void
.end method

.method public constructor <init>(Lyads/fr2;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lyads/qt4;->a(Ly22;I)Lyads/tt4;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/rq2;->a:Lyads/fr2;

    iput-object v0, p0, Lyads/rq2;->b:Lyads/tt4;

    return-void
.end method
