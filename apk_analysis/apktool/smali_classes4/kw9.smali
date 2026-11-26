.class public final synthetic Lkw9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/h;

.field public final synthetic c:I

.field public final synthetic d:Lcom/my/tracker/obfuscated/t1;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/h;ILcom/my/tracker/obfuscated/t1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkw9;->b:Lcom/my/tracker/obfuscated/h;

    iput p2, p0, Lkw9;->c:I

    iput-object p3, p0, Lkw9;->d:Lcom/my/tracker/obfuscated/t1;

    iput-object p4, p0, Lkw9;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lkw9;->e:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    iget-object v1, p0, Lkw9;->b:Lcom/my/tracker/obfuscated/h;

    iget v2, p0, Lkw9;->c:I

    iget-object p0, p0, Lkw9;->d:Lcom/my/tracker/obfuscated/t1;

    invoke-static {v1, v2, p0, v0, p1}, Lcom/my/tracker/obfuscated/h;->a(Lcom/my/tracker/obfuscated/h;ILcom/my/tracker/obfuscated/t1;Ljava/lang/String;Lcom/google/android/gms/appset/AppSetIdInfo;)V

    return-void
.end method
