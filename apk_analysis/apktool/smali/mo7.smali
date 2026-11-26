.class public final Lmo7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhc1;

.field public final b:Ly22;


# direct methods
.method public constructor <init>(Lhc1;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmo7;->a:Lhc1;

    iput-object p2, p0, Lmo7;->b:Ly22;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    new-instance v0, Lmo7$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lmo7$a;-><init>(Lmo7;ILe02;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lmo7;->b:Ly22;

    invoke-static {p0, v1, v1, v0, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method
