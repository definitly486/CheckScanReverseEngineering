.class public final synthetic Ltl9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/W1;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Y1;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/Y1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltl9;->a:Lio/appmetrica/analytics/impl/Y1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Z
    .locals 0

    iget-object p0, p0, Ltl9;->a:Lio/appmetrica/analytics/impl/Y1;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/impl/Y1;->a(Lio/appmetrica/analytics/impl/Y1;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
