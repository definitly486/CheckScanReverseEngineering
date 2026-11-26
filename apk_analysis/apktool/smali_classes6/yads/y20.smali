.class public final Lyads/y20;
.super Lyads/cm3;
.source "SourceFile"


# static fields
.field public static final a:Lyads/y20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/y20;

    invoke-direct {v0}, Lyads/y20;-><init>()V

    sput-object v0, Lyads/y20;->a:Lyads/y20;

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

    check-cast p2, Lyads/o66;

    new-instance p0, Lyads/l20;

    invoke-direct {p0, p1}, Lyads/l20;-><init>(I)V

    invoke-virtual {p2, p0}, Lyads/u66;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyads/o66;

    invoke-virtual {p1}, Lyads/u66;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lyads/l20;

    iget p0, p0, Lyads/l20;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
