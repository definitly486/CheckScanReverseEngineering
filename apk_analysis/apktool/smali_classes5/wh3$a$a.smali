.class public final Lwh3$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwh3$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lwh3$a;


# direct methods
.method public constructor <init>(Lwh3$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwh3$a$a;->b:Lwh3$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lwh3$a$a;->b:Lwh3$a;

    iget-object p0, p0, Lwh3$a;->d:Lbc8;

    invoke-interface {p0}, Lbc8;->cancel()V

    return-void
.end method
