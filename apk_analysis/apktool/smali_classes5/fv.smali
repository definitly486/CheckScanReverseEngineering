.class public final synthetic Lfv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Lkv;


# direct methods
.method public synthetic constructor <init>(Lkv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfv;->a:Lkv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lfv;->a:Lkv;

    iget-object p0, p0, Lkv;->h:Lfu1;

    invoke-virtual {p0}, Lfu1;->d()V

    return-void
.end method
