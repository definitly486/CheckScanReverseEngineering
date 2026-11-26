.class public final synthetic Lb61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ld61;


# direct methods
.method public synthetic constructor <init>(Ld61;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb61;->b:Ld61;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lb61;->b:Ld61;

    iget-object p0, p0, Ld61;->e:Lhi0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    sget-object p0, Ll89$b;->a:Ll89$b;

    return-object p0
.end method
