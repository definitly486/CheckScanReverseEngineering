.class public final synthetic Lo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Lc4;


# direct methods
.method public synthetic constructor <init>(Lc4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3;->a:Lc4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lo3;->a:Lc4;

    iget-object p0, p0, Lc4;->a:Ljf6;

    const-string v0, "null"

    invoke-interface {p0, v0}, Ljf6;->g1(Ljava/lang/String;)V

    return-void
.end method
