.class public final Lkd$v$a$b;
.super Lkd$v$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$v$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final e:Lkd$v$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$v$a$b;

    const-string v1, "Open"

    invoke-direct {v0, v1}, Lkd$v$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkd$v$a$b;->e:Lkd$v$a$b;

    return-void
.end method
