.class public abstract Ljfb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lteb;

.field public static final b:Lcfb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lteb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljfb;->a:Lteb;

    new-instance v0, Lcfb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljfb;->b:Lcfb;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract b(JLjava/lang/Object;Ljava/lang/Object;)V
.end method
