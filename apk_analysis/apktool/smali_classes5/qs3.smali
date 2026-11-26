.class public final Lqs3;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Ldm3<",
        "Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;",
        "Lga3;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lqs3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqs3;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lqs3;->f:Lqs3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;

    check-cast p2, Lga3;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;->tvName:Landroid/widget/TextView;

    iget-object p1, p2, Lga3;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
