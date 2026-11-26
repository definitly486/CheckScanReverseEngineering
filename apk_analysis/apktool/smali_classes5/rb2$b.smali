.class public final Lrb2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrb2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lfc2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lrb2;->b:Lrb2$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lrb2$b$a;->f:Lrb2$b$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lfc2$a;

    new-instance v2, Lnq;

    invoke-direct {v2}, Lnq;-><init>()V

    invoke-direct {v1, v2}, Lfc2$a;-><init>(Lnq;)V

    invoke-virtual {v0, v1}, Lrb2$b$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lfc2;

    invoke-static {v1}, Le0$a;->c(Le0;)Lyx0;

    move-result-object v1

    invoke-direct {v0, v1}, Lfc2;-><init>(Lyx0;)V

    sput-object v0, Lrb2$b;->a:Lfc2;

    sget-object v0, Lrb2$b$b;->f:Lrb2$b$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lfc2$a;

    new-instance v2, Lnq;

    invoke-direct {v2}, Lnq;-><init>()V

    invoke-direct {v1, v2}, Lfc2$a;-><init>(Lnq;)V

    invoke-virtual {v0, v1}, Lrb2$b$b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Le0$a;->c(Le0;)Lyx0;

    return-void
.end method
