.class public final synthetic Lgk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/internal/FloatProducer;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgk2;->b:Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;

    return-void
.end method


# virtual methods
.method public final invoke()F
    .locals 0

    iget-object p0, p0, Lgk2;->b:Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;

    invoke-static {p0}, Landroidx/compose/material3/DefaultTwoRowsTopAppBarOverride;->h(Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;)F

    move-result p0

    return p0
.end method
