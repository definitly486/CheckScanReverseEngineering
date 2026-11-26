.class public final synthetic Ldo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:[Lo22;

.field public final synthetic c:Lp07;


# direct methods
.method public synthetic constructor <init>([Lo22;Lp07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldo1;->b:[Lo22;

    iput-object p2, p0, Ldo1;->c:Lp07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lj59;

    check-cast p2, Lo22$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Ldo1;->c:Lp07;

    iget v0, p1, Lp07;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lp07;->b:I

    iget-object p0, p0, Ldo1;->b:[Lo22;

    aput-object p2, p0, v0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
