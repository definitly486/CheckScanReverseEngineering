.class public final synthetic Lsga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ut5;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsga;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lsga;->b:Landroid/content/Context;

    invoke-static {p0}, Lyads/wp2;->b(Landroid/content/Context;)Lyads/g14;

    move-result-object p0

    return-object p0
.end method
