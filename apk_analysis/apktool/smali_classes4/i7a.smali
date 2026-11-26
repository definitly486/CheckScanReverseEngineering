.class public final Li7a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Li7a;


# instance fields
.field public final a:Lz8a;

.field public final b:Lpp9;

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Li7a;

    sget-object v1, Lpp9;->d:Lpp9;

    const/16 v2, 0x3e7

    invoke-direct {v0, v1, v2}, Li7a;-><init>(Lpp9;I)V

    sput-object v0, Li7a;->e:Li7a;

    return-void
.end method

.method public constructor <init>(Lpp9;I)V
    .locals 2

    const-string v0, ""

    .line 12
    iget-object v1, p1, Lpp9;->a:Lz8a;

    .line 13
    invoke-direct {p0, v1, p1, p2, v0}, Li7a;-><init>(Lz8a;Lpp9;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lz8a;Lpp9;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li7a;->a:Lz8a;

    iput-object p2, p0, Li7a;->b:Lpp9;

    iput p3, p0, Li7a;->c:I

    iput-object p4, p0, Li7a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Li7a;->b:Lpp9;

    if-eqz v0, :cond_0

    iget v2, p0, Li7a;->c:I

    const/4 v3, 0x3

    move v4, p1

    move-object v1, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    return-void

    :cond_0
    move v4, p1

    move-object v1, p2

    move-object v5, p3

    iget v6, p0, Li7a;->c:I

    const/4 v7, 0x3

    iget-object p0, p0, Li7a;->a:Lz8a;

    move v8, v4

    move-object v9, v5

    move-object v4, p0

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method
