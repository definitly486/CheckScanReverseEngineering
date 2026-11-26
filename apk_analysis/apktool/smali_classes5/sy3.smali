.class public final Lsy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lem1$a;


# direct methods
.method public constructor <init>(Lem1$a;Lh88;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsy3;->b:Lem1$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lsy3;->b:Lem1$a;

    invoke-interface {p0}, Lem1$a;->a()V

    return-void
.end method
