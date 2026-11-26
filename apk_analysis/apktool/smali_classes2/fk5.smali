.class public final synthetic Lfk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Lll3;

.field public final synthetic e:J

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(ZLll3;Lll3;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lfk5;->b:Z

    iput-object p2, p0, Lfk5;->c:Lll3;

    iput-object p3, p0, Lfk5;->d:Lll3;

    iput-wide p4, p0, Lfk5;->e:J

    iput p6, p0, Lfk5;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-boolean v0, p0, Lfk5;->b:Z

    iget-object v1, p0, Lfk5;->c:Lll3;

    iget-object v2, p0, Lfk5;->d:Lll3;

    iget-wide v3, p0, Lfk5;->e:J

    iget v5, p0, Lfk5;->f:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/NavigationDrawerKt;->j(ZLll3;Lll3;JILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
