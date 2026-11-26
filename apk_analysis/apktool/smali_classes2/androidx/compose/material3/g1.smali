.class public final synthetic Landroidx/compose/material3/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DelegatingThemeAwareRippleNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/g1;->b:Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/g1;->b:Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    invoke-static {p0}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->a(Landroidx/compose/material3/DelegatingThemeAwareRippleNode;)Landroidx/compose/material/ripple/RippleAlpha;

    move-result-object p0

    return-object p0
.end method
