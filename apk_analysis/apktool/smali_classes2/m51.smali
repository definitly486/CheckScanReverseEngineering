.class public final synthetic Lm51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lll3;


# direct methods
.method public synthetic constructor <init>(ILll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm51;->b:I

    iput-object p2, p0, Lm51;->c:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm51;->b:I

    iget-object p0, p0, Lm51;->c:Lll3;

    invoke-static {v0, p0}, Landroidx/compose/material3/carousel/CarouselStateKt;->b(ILll3;)Landroidx/compose/material3/carousel/CarouselState;

    move-result-object p0

    return-object p0
.end method
