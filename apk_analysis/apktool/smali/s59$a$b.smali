.class public final Ls59$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls59$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls59$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lnu5;


# direct methods
.method public constructor <init>(Lnu5;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls59$a$b;->a:Lnu5;

    return-void
.end method
