.class public final Lvn5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le02;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le02<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lvn5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvn5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvn5;->b:Lvn5;

    return-void
.end method


# virtual methods
.method public final getContext()Lo22;
    .locals 0

    sget-object p0, Lgx2;->b:Lgx2;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
