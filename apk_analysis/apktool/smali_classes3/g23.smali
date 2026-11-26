.class public final Lg23;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lg23;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg23;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lg23;-><init>(ZI)V

    sput-object v0, Lg23;->c:Lg23;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lg23;->a:Z

    iput p2, p0, Lg23;->b:I

    return-void
.end method
