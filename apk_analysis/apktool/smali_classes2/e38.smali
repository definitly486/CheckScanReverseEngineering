.class public final synthetic Le38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:I

.field public final synthetic d:Lll3;

.field public final synthetic e:Lnm1;


# direct methods
.method public synthetic constructor <init>(FILll3;Lnm1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le38;->b:F

    iput p2, p0, Le38;->c:I

    iput-object p3, p0, Le38;->d:Lll3;

    iput-object p4, p0, Le38;->e:Lnm1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le38;->d:Lll3;

    iget-object v1, p0, Le38;->e:Lnm1;

    iget v2, p0, Le38;->b:F

    iget p0, p0, Le38;->c:I

    invoke-static {v2, p0, v0, v1}, Landroidx/compose/material3/SliderKt;->t(FILll3;Lnm1;)Landroidx/compose/material3/SliderState;

    move-result-object p0

    return-object p0
.end method
