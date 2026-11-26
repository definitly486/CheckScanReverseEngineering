.class public interface abstract Lbz3$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbz3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lcz3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbz3$b;->a:Lcz3;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method
