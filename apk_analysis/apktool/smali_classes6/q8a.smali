.class public final synthetic Lq8a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq8a;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lq8a;->b:I

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lyads/sy0;->a(ILjava/util/List;)Lj59;

    move-result-object p0

    return-object p0
.end method
