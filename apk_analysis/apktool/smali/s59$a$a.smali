.class public final Ls59$a$a;
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
    name = "a"
.end annotation


# instance fields
.field public final a:Lj69;


# direct methods
.method public constructor <init>(Lj69;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls59$a$a;->a:Lj69;

    return-void
.end method
