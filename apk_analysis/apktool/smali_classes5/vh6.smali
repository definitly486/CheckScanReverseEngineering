.class public final Lvh6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "catId"
    .end annotation
.end field

.field private final b:Ljava/util/Date;
    .annotation runtime Lbq7;
        value = "datetime"
    .end annotation
.end field

.field private final c:J
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "name"
    .end annotation
.end field

.field private final e:I
    .annotation runtime Lbq7;
        value = "price"
    .end annotation
.end field

.field private final f:J
    .annotation runtime Lbq7;
        value = "prodId"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "quantity"
    .end annotation
.end field

.field private final h:I
    .annotation runtime Lbq7;
        value = "recId"
    .end annotation
.end field

.field private final i:I
    .annotation runtime Lbq7;
        value = "shopId"
    .end annotation
.end field

.field private final j:I
    .annotation runtime Lbq7;
        value = "sum"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Date;JLjava/lang/String;IJLjava/lang/String;III)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lvh6;->a:I

    iput-object p2, p0, Lvh6;->b:Ljava/util/Date;

    iput-wide p3, p0, Lvh6;->c:J

    iput-object p5, p0, Lvh6;->d:Ljava/lang/String;

    iput p6, p0, Lvh6;->e:I

    iput-wide p7, p0, Lvh6;->f:J

    iput-object p9, p0, Lvh6;->g:Ljava/lang/String;

    iput p10, p0, Lvh6;->h:I

    iput p11, p0, Lvh6;->i:I

    iput p12, p0, Lvh6;->j:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lvh6;->c:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvh6;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lvh6;->e:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lvh6;->h:I

    return p0
.end method
