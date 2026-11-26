.class public final Lyads/nm3;
.super Lyads/cm3;
.source "SourceFile"


# static fields
.field public static final a:Lyads/nm3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/nm3;

    invoke-direct {v0}, Lyads/nm3;-><init>()V

    sput-object v0, Lyads/nm3;->a:Lyads/nm3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/cm3;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lyads/r66;

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Lyads/u66;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyads/r66;

    invoke-virtual {p1}, Lyads/u66;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
