.class public final Lyads/ct2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/dt2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/by4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/by4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ct2;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/ct2;->b:Lyads/by4;

    return-void
.end method


# virtual methods
.method public final getValue()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lyads/ct2;->a:Landroid/content/Context;

    iget-object p0, p0, Lyads/ct2;->b:Lyads/by4;

    invoke-static {v0, p0}, Lyads/cy4;->a(Landroid/content/Context;Lyads/by4;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
