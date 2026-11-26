.class public final Lg39;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg39$a;
    }
.end annotation


# static fields
.field public static final c:Lg39$a;


# instance fields
.field public final a:Lpv8;

.field public final b:Ltv4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg39$a;

    sget-object v1, Lpv8;->v1:Lpv8;

    invoke-direct {v0, v1}, Lg39$a;-><init>(Lpv8;)V

    sput-object v0, Lg39;->c:Lg39$a;

    return-void
.end method

.method public constructor <init>(Lpv8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Luv4;->a()Ltv4;

    move-result-object v0

    iput-object v0, p0, Lg39;->b:Ltv4;

    iput-object p1, p0, Lg39;->a:Lpv8;

    return-void
.end method
