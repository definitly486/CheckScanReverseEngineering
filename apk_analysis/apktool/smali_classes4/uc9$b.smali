.class public final Luc9$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luc9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Luc9$a;


# direct methods
.method public varargs constructor <init>(I[Luc9$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Luc9$b;->a:I

    iput-object p2, p0, Luc9$b;->b:[Luc9$a;

    return-void
.end method
