.class public final Lyads/iz4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/hz4;

.field public static final d:[Lcl4;


# instance fields
.field public final a:Lyads/kz4;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/hz4;

    invoke-direct {v0}, Lyads/hz4;-><init>()V

    sput-object v0, Lyads/iz4;->Companion:Lyads/hz4;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v1, Ler2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ler2;-><init>(I)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    new-array v1, v2, [Lcl4;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v2, v1, v0

    sput-object v1, Lyads/iz4;->d:[Lcl4;

    return-void
.end method

.method public constructor <init>(ILyads/kz4;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/iz4;->a:Lyads/kz4;

    iput-object p3, p0, Lyads/iz4;->b:Ljava/lang/String;

    iput-object p4, p0, Lyads/iz4;->c:Ljava/lang/Integer;

    return-void

    :cond_0
    sget-object p0, Lyads/gz4;->b:Ls96;

    invoke-static {p0, p1, v1}, Lr96;->f(Lmp7;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lyads/kz4;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lyads/iz4;->a:Lyads/kz4;

    .line 24
    iput-object p2, p0, Lyads/iz4;->b:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lyads/iz4;->c:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic a()Ldf4;
    .locals 1

    sget-object v0, Lyads/kz4;->Companion:Lyads/jz4;

    invoke-virtual {v0}, Lyads/jz4;->serializer()Ldf4;

    move-result-object v0

    return-object v0
.end method
